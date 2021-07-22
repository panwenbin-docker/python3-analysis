FROM python:3

RUN pip install --upgrade pip

RUN pip install wheel clickhouse-driver jieba lxml openpyxl pandas protobuf python-dotenv requests Scrapy Twisted XlsxWriter zhon
