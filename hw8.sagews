#rain: 'welcome to Seattle', 'I wonder what the weather will be tomorrow...'
#overcast: 'welcome to Seattle', 'just right'
#sunny: 'I wonder what the weather will be tomorrow...', 'clear skies for a change'

A = matrix(RR, 3, [.85, .12, .03,  # rain
                   .75, .20, .05,  # overcast
                   .50, .20, .30]) # sunny

symbols = ['welcome to Seattle', 'I wonder what the weather will be tomorrow...', 'just right', 'clear skies for a change']

B = matrix(RR, 3, 4, [.70, .30, 0, 0,  # rain
                      .80, 0, .20, 0,  # overcast
                      0, .85, 0, .15]) # sunny

init = [1, 0, 0]

model = hmm.DiscreteHiddenMarkovModel(A, B, init, symbols); model
︡c08f6bd0-c054-4f7a-b7e1-ebecc2d010fb︡{"stdout":"Discrete Hidden Markov Model with 3 States and 4 Emissions\nTransition matrix:\n[0.85 0.12 0.03]\n[0.75  0.2 0.05]\n[ 0.5  0.2  0.3]\nEmission matrix:\n[ 0.7  0.3  0.0  0.0]\n[ 0.8  0.0  0.2  0.0]\n[ 0.0 0.85  0.0 0.15]\nInitial probabilities: [1.0000, 0.0000, 0.0000]\nEmission symbols: ['welcome to Seattle', 'I wonder what the weather will be tomorrow...', 'just right', 'clear skies for a change']\n"}︡
︠7ab65897-99c4-4f75-927f-bb99a876877d︠
set_random_seed(1); v,w = model.generate_sequence(30)
for z in zip(v,w):
    print z
︡e6468ed3-51fc-4d5a-9a78-bdf239040e13︡{"stdout":"('I wonder what the weather will be tomorrow...', 0)\n('I wonder what the weather will be tomorrow...', 0)\n('welcome to Seattle', 0)\n('I wonder what the weather will be tomorrow...', 0)\n('welcome to Seattle', 1)\n('I wonder what the weather will be tomorrow...', 0)\n('welcome to Seattle', 0)\n('welcome to Seattle', 0)\n('welcome to Seattle', 0)\n('welcome to Seattle', 0)\n('welcome to Seattle', 0)\n('welcome to Seattle', 0)\n('I wonder what the weather will be tomorrow...', 2)\n('welcome to Seattle', 0)\n('welcome to Seattle', 1)\n('welcome to Seattle', 1)\n('welcome to Seattle', 0)\n('welcome to Seattle', 0)\n('welcome to Seattle', 0)\n('I wonder what the weather will be tomorrow...', 0)\n('welcome to Seattle', 1)\n('welcome to Seattle', 0)\n('welcome to Seattle', 0)\n('welcome to Seattle', 0)\n('welcome to Seattle', 0)\n('welcome to Seattle', 0)\n('welcome to Seattle', 0)\n('I wonder what the weather will be tomorrow...', 2)\n('welcome to Seattle', 1)\n('welcome to Seattle', 0)\n"}︡
︠13271af4-76e3-4479-8273-e1d4beb2f8c8︠
