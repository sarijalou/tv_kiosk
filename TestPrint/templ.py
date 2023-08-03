from jinja2 import Environment, FileSystemLoader
import datetime

# Load the template file
env = Environment(loader=FileSystemLoader('.'))
template = env.get_template('restaurant_receipt_template.html')

# Define the context for the placeholders
context = {
    'restaurant_name': 'My Restaurant',
    'address': '123 Main St.',
    'city': 'Anytown',
    'state': 'CA',
    'zip': '12345',
    'phone': '(555) 555-5555',
    'date': datetime.date.today().strftime('%m/%d/%Y'),
    'time': datetime.datetime.now().strftime('%I:%M %p'),
    'order_items': [
        {
            'name': 'Burger',
            'quantity': 1,
            'price': 10.99
        },
        {
            'name': 'Fries',
            'quantity': 2,
            'price': 3.99
        }
    ],
    'subtotal': 18.97,
    'tax_rate': 0.08,
    'tax_amount': 1.52,
    'total': 20.49
}

# Render the template with the context
output = template.render(context)

# Save the output file
with open('restaurant_receipt.html', 'w') as f:
    f.write(output)


# import jinja2
# environment = jinja2.Environment()
# template = environment.from_string("Hello, {{ name }}!")
# jesi=template.render(name="World")
# print(jesi)