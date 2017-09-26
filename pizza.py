# Created by: Kay Lin
# Created on: Sep 26th 2016
# Created for: ICS3U
# This program calculates the cost of a pizza, give the diameter

import ui

def calculate_button_touch_up_inside(sender):
    #calculate cost
    
    #constants
    PI = 3.14
    LABOUR_COST = 0.75
    RENT_COST = 1.00
    MATERIAL_COST = 0.50
    HST = 0.13
    
    #input
    diameter = float(view['diameter_textbox'].text)
    
    #process
    sub_total = LABOUR_COST + RENT_COST + (MATERIAL_COST * diameter)
    cost = sub_total + (sub_total * HST)
    
    #output
    view['answer_label'].text = 'The cost is ' + '${:,.2f}'.format(cost)

view = ui.load_view()
view.present('full_screen')
