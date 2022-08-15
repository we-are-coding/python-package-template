import setuptools

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

requirements = []
with open('requirements.txt', 'r') as fh:
    for line in fh:
        requirements.append(line.strip())

setuptools.setup(
    name="watemplate",
    version="0.0.0",
    author="we are",
    author_email="hi@we-are.be",
    description="python package template used by we are",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/we-are-coding/python-package-template",
    packages=setuptools.find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "Operating System :: OS Independent",
    ],
    install_requires=requirements,
    python_requires='>=3.8',
)
