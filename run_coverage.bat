::���֮ǰ�Ĳ����ļ�
@echo off
echo ��������ļ�
rmdir /s/q .\htmlcov\
coverage erase
::��ʼ����
echo ��ʼ����...
coverage run .\test_redque.py
::���ɱ���
coverage report -m
choice /M "�Ƿ�����html����ҳ��"
if %ERRORLEVEL% == 1 (
    ::����html����
    coverage html
    start .\htmlcov\index.html
)
