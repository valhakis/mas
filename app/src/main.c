#include <form.h>
#include <stdio.h>

int main() 
{

  int open = 1;
  FIELD *field[3];
  FORM *my_form;
  int ch;

  /* initialize curses */
  initscr();
  cbreak();
  noecho();
  keypad(stdscr, TRUE);

  /* initialize the field */
  field[0] = new_field(1, 40, 4, 18, 0, 0);
  field[1] = new_field(1, 40, 6, 18, 0, 0);
  field[2] = NULL;

  /* set field options */
  set_field_back(field[0], A_UNDERLINE); /* print line for the option */
  field_opts_off(field[0], O_AUTOSKIP); /* don't go to next field when this */

  set_field_back(field[1], A_UNDERLINE);
  field_opts_off(field[1], O_AUTOSKIP);

  /* create the form and post it */
  my_form = new_form(field);
  post_form(my_form);
  refresh();

  mvprintw(4, 10, "Value 1:");
  mvprintw(6, 10, "Value 2:");
  refresh();

  /* loop through to get user request */
  while((ch = getch()) != KEY_F(1)) 
  {
    if (ch == 27) break;
    switch(ch) 
    {
      case KEY_DOWN:
        /* go to next field */
        form_driver(my_form, REQ_NEXT_FIELD);
        /* go to the end of the present buffer */
        /* leaves nicely at the last character */
        form_driver(my_form, REQ_END_LINE);
        break;
      case KEY_UP:
        /* go to previous field */
        form_driver(my_form, REQ_PREV_FIELD);
        form_driver(my_form, REQ_END_LINE);
        break;
      case 127:
        form_driver(my_form, REQ_DEL_CHAR);
        form_driver(my_form, REQ_DEL_PREV);
        break;
      case 10:
        /* if this is a normal chatecter, it gets printed */
        mvprintw(11, 11, "ENTER");
        form_driver(my_form, ch);
        form_driver(my_form, REQ_NEXT_FIELD);
        form_driver(my_form, REQ_END_LINE);
        break;
      default:
        /* if this is a normal chatecter, it gets printed */
        mvprintw(10, 10, "                               ");
        mvprintw(10, 10, "key %d", ch);
        form_driver(my_form, ch);
        break;
    }
  }

  /* un post form and free the memory */
  unpost_form(my_form);
  free_form(my_form);
  free_field(field[0]);
  free_field(field[1]);

  endwin();

  return 0;
}
