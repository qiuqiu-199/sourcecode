.class public Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;
.super Ljava/lang/Object;
.source "FlexibleKeyItemFactory.java"


# instance fields
.field private dummyItem:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;

.field private initialsHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;",
            ">;"
        }
    .end annotation
.end field

.field private myKeysHeader:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->initialsHeaderMap:Ljava/util/Map;

    .line 23
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->resources:Landroid/content/res/Resources;

    const v0, 0x7f110b9a

    .line 24
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 25
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->myKeysHeader:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;---><init>(Landroid/content/res/Resources;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getDummyItem()Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;
    .locals 5

    move-object/16 v2, p0

    .line 77
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->dummyItem:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->myKeysHeader:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->dummyItem:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;

    .line 80
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->dummyItem:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;--->getDummyItem()Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getFlexibleKeyHeader(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 45
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->myKeysHeader:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    return-object v3

    .line 49
    :cond_0
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->getHeaderText(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Ljava/lang/String;

    move-result-object v3

    .line 52
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->initialsHeaderMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->initialsHeaderMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;-><init>(Ljava/lang/String;)V

    .line 56
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->initialsHeaderMap:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    :goto_0
    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;--->getFlexibleKeyHeader(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getHeaderText(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 63
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 71
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->resources:Landroid/content/res/Resources;

    const v0, 0x7f110872

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_3
    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 68
    :cond_4
    :goto_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->resources:Landroid/content/res/Resources;

    const v0, 0x7f110871

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;--->getHeaderText(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public mapUnifiedKeyInfoToFlexibleKeyItems(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez v5, :cond_0

    return-object v0

    .line 33
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v1

    if-nez v1, :cond_2

    .line 34
    :cond_1
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->getDummyItem()Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 37
    invoke-direct {v4, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->getFlexibleKeyHeader(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    move-result-object v2

    .line 38
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;

    invoke-direct {v3, v1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;-><init>(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;)V

    .line 39
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;--->mapUnifiedKeyInfoToFlexibleKeyItems(Ljava/util/List;)Ljava/util/List;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
