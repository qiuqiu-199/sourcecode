.class public abstract Lorg/inaturalist/android/BaseGuideXMLParser;
.super Ljava/lang/Object;
.source "BaseGuideXMLParser.java"


# instance fields
.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRootNode:Lorg/w3c/dom/Node;

.field private mXpath:Ljavax/xml/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/BaseGuideXMLParser;->mXpath:Ljavax/xml/xpath/XPath;

    .line 40
    new-instance v0, Lorg/inaturalist/android/NamespaceContextMap;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "dc"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "dcterms"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "http://purl.org/dc/terms/"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "eol"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "http://www.eol.org/transfer/content/1.0"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/inaturalist/android/NamespaceContextMap;-><init>([Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lorg/inaturalist/android/BaseGuideXMLParser;->mXpath:Ljavax/xml/xpath/XPath;

    invoke-interface {v1, v0}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/BaseGuideXMLParser;->mCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 143
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    const/4 v0, 0x0

    .line 145
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 146
    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 147
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getNodesByXPath(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/inaturalist/android/BaseGuideXMLParser;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/inaturalist/android/BaseGuideXMLParser;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1

    .line 117
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/inaturalist/android/BaseGuideXMLParser;->mXpath:Ljavax/xml/xpath/XPath;

    iget-object v1, p0, Lorg/inaturalist/android/BaseGuideXMLParser;->mRootNode:Lorg/w3c/dom/Node;

    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p1, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 125
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 126
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 127
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/BaseGuideXMLParser;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getRootNode()Lorg/w3c/dom/Node;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/inaturalist/android/BaseGuideXMLParser;->mRootNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method protected getValueByXPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/inaturalist/android/BaseGuideXMLParser;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/inaturalist/android/BaseGuideXMLParser;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 78
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/inaturalist/android/BaseGuideXMLParser;->mXpath:Ljavax/xml/xpath/XPath;

    iget-object v1, p0, Lorg/inaturalist/android/BaseGuideXMLParser;->mRootNode:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1, v1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lorg/inaturalist/android/BaseGuideXMLParser;->mCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getValuesByXPath(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/BaseGuideXMLParser;->getNodesByXPath(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 97
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected setRootNode(Lorg/w3c/dom/Node;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/inaturalist/android/BaseGuideXMLParser;->mRootNode:Lorg/w3c/dom/Node;

    return-void
.end method
