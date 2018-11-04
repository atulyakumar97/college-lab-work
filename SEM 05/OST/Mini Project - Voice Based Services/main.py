from speechtotext import *

if __name__ == "__main__":

    # create recognizer and mic instances
    recognizer = sr.Recognizer()
    microphone = sr.Microphone()

    initial_keywords=None
    mail_keywords=None
    reminder_title_keywords=None
    reminder_time_keywords=None
    reminder_place_keywords=None
    plan_keywords=None

    print('Please state which facility you want to use\n1.\tCheck email\n2.\tSet Reminder\n3.\tView Mobile Bill\n4..\tExit')    
    while initial_keywords is None:
        initial_keywords=start_recording(recognizer,microphone)

    if 'email' in initial_keywords:
        print('\nSelect Email Folder\n1.\tInbox\n2.\tUnread\n3.\tSent')
        while mail_keywords is None:
            mail_keywords=start_recording(recognizer,microphone)
            if mail_keywords!=None and 'inbox' in mail_keywords:
                print('View inbox')
            elif mail_keywords!=None and 'unread' in mail_keywords:
                print('View unread emails')
            elif mail_keywords!=None and 'sent' in mail_keywords:
                print('View sent messages')
            else:
                print('Program did not understand your instruction. Please try again\n')
                
            
    elif 'reminder' in initial_keywords:
        print('\nWhat is the title of the reminder ? ex. Pay bill')
        while reminder_title_keywords is None:
            reminder_title_keywords=start_recording(recognizer,microphone)
            title=' '.join(reminder_title_keywords)
            print('\nAt what time do you want to be reminded ? ex. 10pm')
            while reminder_time_keywords is None:
                reminder_time_keywords=start_recording(recognizer,microphone)
                time=' '.join(reminder_time_keywords)
                print('\nWhat is the place of the reminder ? ex. at Home')
                while reminder_place_keywords is None:
                    reminder_place_keywords=start_recording(recognizer,microphone)
                    place=' '.join(reminder_place_keywords)

        print('\nOkay! We will remind you to `{}` at `{}` `{}`'.format(title,time,place))
        

    elif 'mobile' in initial_keywords:
        print('''\nBill :
                One time charges                2,000.00
                Monthly charges                   850.00
                Usage charges Call charges          0.00
                Value added services                0.00 
                Mobile internet usage          29,473.95 
                Roaming                             0.00 
                Discounts                      29,473.95 
                Last bill period late fee         100.00 
                Taxes                             413.25
                This month’s charges            3,363.25''')

        print('''\nList of Available Plans :

Plan A - Airtel's Rs. 399 postpaid recharge plan
Plan B - Airtel's Rs. 499 postpaid recharge plan
Plan C - Airtel's Rs. 649 postpaid recharge plan
Plan D - Airtel's Rs. 799 postpaid recharge plan
Plan E - Airtel's Rs. 1,199 postpaid recharge plan''')

        print('To select or change plan, say `Plan A/B/C/D/E ')
        while plan_keywords is None:
            plan_keywords=start_recording(recognizer,microphone)

        print('Your new postpaid plan is {}'.format(' '.join(plan_keywords)))
        
        
    elif 'exit' in initial_keywords:
        print('Bye !')

    else:
        initial_keywords=None
        print('Program did not understand your instruction. Please try again\n')
