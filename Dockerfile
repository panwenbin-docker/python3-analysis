FROM python:3.9

RUN pip install --upgrade pip

RUN pip install wheel clickhouse-driver jieba lxml openpyxl pandas protobuf python-dotenv requests Scrapy Twisted XlsxWriter zhon

ADD patches /patches

RUN cd /usr/local/lib/python3.9/site-packages \
    && git apply /patches/0001-change-type-check-from-list-and-tuple-to-Iterable-wh.patch \
    && git apply /patches/0001-invoke-tolist-only-if-items-is-not-a-list.patch
