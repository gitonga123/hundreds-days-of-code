# config.py

class Config(object):
    """Common Configurations
    
    Arguments:
        object {object} -- Configurations
    """
    # Put any configurations here that are common across all environments

class DevelopmentConfig(Config):
    """Development configurations
    
    Arguments:
        Config {Object} -- Instance of Config class
    """
    DEBUG = True
    SQLALCHEMY_ECHO = True

class ProductionConfig(Config):
    """Production Configurations
    
    Arguments:
        Config {Object} -- Instance of Config class
    """
    DEBUG = False

app_config = {
    "development": DevelopmentConfig,
    "production": ProductionConfig
}