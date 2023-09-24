.class public Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;
.super Ljava/lang/Object;
.source "EmailKeyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$ImportContactKeysCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 44
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static findKeyserverFromDns(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
    .locals 7

    move-object/16 v4, p0

    .line 123
    :try_start_0
    new-instance v0, Lde/measite/minidns/Client;

    invoke-direct {v0}, Lde/measite/minidns/Client;-><init>()V

    new-instance v1, Lde/measite/minidns/Question;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_hkp._tcp."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lde/measite/minidns/Record$TYPE;->SRV:Lde/measite/minidns/Record$TYPE;

    invoke-direct {v1, v4, v2}, Lde/measite/minidns/Question;-><init>(Ljava/lang/String;Lde/measite/minidns/Record$TYPE;)V

    invoke-virtual {v0, v1}, Lde/measite/minidns/Client;->query(Lde/measite/minidns/Question;)Lde/measite/minidns/DNSMessage;

    move-result-object v4

    invoke-virtual {v4}, Lde/measite/minidns/DNSMessage;->getAnswers()[Lde/measite/minidns/Record;

    move-result-object v4

    .line 124
    array-length v0, v4

    if-lez v0, :cond_0

    .line 125
    new-instance v0, Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$1;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 133
    aget-object v4, v4, v0

    .line 134
    invoke-virtual {v4}, Lde/measite/minidns/Record;->getPayload()Lde/measite/minidns/record/Data;

    move-result-object v0

    invoke-interface {v0}, Lde/measite/minidns/record/Data;->getType()Lde/measite/minidns/Record$TYPE;

    move-result-object v0

    sget-object v1, Lde/measite/minidns/Record$TYPE;->SRV:Lde/measite/minidns/Record$TYPE;

    if-ne v0, v1, :cond_0

    .line 135
    invoke-virtual {v4}, Lde/measite/minidns/Record;->getPayload()Lde/measite/minidns/record/Data;

    move-result-object v4

    check-cast v4, Lde/measite/minidns/record/SRV;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lde/measite/minidns/record/SRV;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lde/measite/minidns/record/SRV;->getPort()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->createFromUri(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    :cond_0
    const/4 v4, 0x0

    return-object v4

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;--->findKeyserverFromDns(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getEmailKeys(Ljava/lang/String;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;",
            ")",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 108
    :try_start_0
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->fromHkpKeyserverAddress(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;

    move-result-object v5

    invoke-virtual {v5, v4, v6}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/ArrayList;

    move-result-object v5

    .line 107
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    .line 109
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->isRevokedOrExpiredOrInsecure()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getUserIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$CloudSearchFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 118
    :catch_0
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;--->getEmailKeys(Ljava/lang/String;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/List;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getEmailKeys(Landroid/content/Context;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;",
            ")",
            "Ljava/util/Set<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "@"

    .line 85
    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 86
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 87
    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;->findKeyserverFromDns(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {v5, v1, v6}, Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;->getEmailKeys(Ljava/lang/String;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferredKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 97
    invoke-static {v5, v4, v6}, Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;->getEmailKeys(Ljava/lang/String;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;--->getEmailKeys(Landroid/content/Context;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/Set;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
