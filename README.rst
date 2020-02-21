DFS Telegram Bot
================
A simple bot for displaying the latest news, sports schedules and injury updates.

Install Requirements
--------------------
Install the project's dependencies with:

.. code-block:: bash

	pip3 install -r requirements.txt

Instructions
------------
You must create a file **config.py** at the root folder and inside define your **api_key** from `Telegram`_ and your **url** from `News API`_. You have to create a bot with `Bot Father`_ to get your **api_key**.

.. _Telegram: https://telegram.org
.. _News API: https://newsapi.org/
.. _Bot Father: https://telegram.me/BotFather

Local Development
-----------------
Fire up the bot:

.. code-block:: bash

	python3 bot.py

Deployment to Production
------------------------
Alternatively, you can deploy your own copy of the app using the web-based flow:

|ImageLink|_

.. |ImageLink| image:: https://www.herokucdn.com/deploy/button.png
.. _ImageLink: https://heroku.com/deploy

License
-------
License stuff is `here`_.

.. _here: https://gist.github.com/0xnu/d11da49c85eeb7272517a9010bbdf1ab