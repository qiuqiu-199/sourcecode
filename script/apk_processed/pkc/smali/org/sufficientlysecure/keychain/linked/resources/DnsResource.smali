.class public Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;
.super Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;
.source "DnsResource.java"


# static fields
.field static final magicPattern:Ljava/util/regex/Pattern;


# instance fields
.field mClass:Lde/measite/minidns/Record$CLASS;

.field mFqdn:Ljava/lang/String;

.field mType:Lde/measite/minidns/Record$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "openpgpid\\+token=([a-zA-Z0-9]+)(?:#|;)([a-zA-Z0-9]+)"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;->magicPattern:Ljava/util/regex/Pattern;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;Ljava/lang/String;Lde/measite/minidns/Record$CLASS;Lde/measite/minidns/Record$TYPE;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Lde/measite/minidns/Record$CLASS;",
            "Lde/measite/minidns/Record$TYPE;",
            ")V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    .line 55
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;-><init>(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)V

    .line 57
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;->mFqdn:Ljava/lang/String;

    .line 58
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;->mClass:Lde/measite/minidns/Record$CLASS;

    .line 59
    iput-object p3, v0, Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;->mType:Lde/measite/minidns/Record$TYPE;

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;---><init>(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;Ljava/lang/String;Lde/measite/minidns/Record$CLASS;Lde/measite/minidns/Record$TYPE;)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            ")",
            "Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;"
        }
    .end annotation

    move-object/16 v9, p0

    move-object/16 v10, p1

    move-object/16 v11, p2

    const-string v0, "dns"

    .line 77
    invoke-virtual {v11}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz v9, :cond_0

    .line 78
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    if-eqz v10, :cond_1

    .line 79
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v11}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v2, "//"

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    const-string v1, "\\?"

    const/4 v2, 0x2

    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    aget-object v6, v0, v1

    .line 100
    sget-object v7, Lde/measite/minidns/Record$CLASS;->IN:Lde/measite/minidns/Record$CLASS;

    .line 101
    sget-object v8, Lde/measite/minidns/Record$TYPE;->TXT:Lde/measite/minidns/Record$TYPE;

    .line 103
    new-instance v0, Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;

    move-object v2, v0

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v2 .. v8}, Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;-><init>(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;Ljava/lang/String;Lde/measite/minidns/Record$CLASS;Lde/measite/minidns/Record$TYPE;)V

    return-object v0

    :cond_3
    :goto_0
    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;--->create(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createNew(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;
    .locals 7

    move-object/16 v4, p0

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dns:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?TYPE=TXT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    .line 73
    invoke-static {v0, v1, v4}, Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;->create(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;--->createNew(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static generateText([B)Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    const-string v0, "openpgp4fpr=%s"

    const/4 v1, 0x1

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    .line 65
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToHex([B)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 64
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;--->generateText([B)Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected fetchResource(Landroid/content/Context;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move/16 p0, p3

    .line 114
    new-instance v3, Lde/measite/minidns/Client;

    invoke-direct {v3}, Lde/measite/minidns/Client;-><init>()V

    .line 115
    new-instance v4, Lde/measite/minidns/Question;

    iget-object p0, v2, Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;->mFqdn:Ljava/lang/String;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;->mType:Lde/measite/minidns/Record$TYPE;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;->mClass:Lde/measite/minidns/Record$CLASS;

    invoke-direct {v4, p0, v0, v1}, Lde/measite/minidns/Question;-><init>(Ljava/lang/String;Lde/measite/minidns/Record$TYPE;Lde/measite/minidns/Record$CLASS;)V

    invoke-virtual {v3, v4}, Lde/measite/minidns/Client;->query(Lde/measite/minidns/Question;)Lde/measite/minidns/DNSMessage;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Lde/measite/minidns/DNSMessage;->getAnswers()[Lde/measite/minidns/Record;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 117
    invoke-virtual {v3}, Lde/measite/minidns/Record;->getPayload()Lde/measite/minidns/record/Data;

    move-result-object v3

    check-cast v3, Lde/measite/minidns/record/TXT;

    .line 118
    invoke-virtual {v3}, Lde/measite/minidns/record/TXT;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    return-object v3

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;--->fetchResource(Landroid/content/Context;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Ljava/lang/String;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDisplayComment(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 145
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;->mFqdn:Ljava/lang/String;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;--->getDisplayComment(Landroid/content/Context;)Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDisplayIcon()I
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0800f8

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;--->getDisplayIcon()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const v0, 0x7f110953

    .line 140
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;--->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFqdn()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 108
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;->mFqdn:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;--->getFqdn()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getVerifiedText(Z)I
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    if-eqz v1, :cond_0

    const v1, 0x7f11095a

    goto :goto_0

    :cond_0
    const v1, 0x7f110957

    :goto_0
    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;--->getVerifiedText(Z)I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected matchResource(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILjava/lang/String;)Ljava/util/regex/Matcher;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    .line 124
    sget-object v1, Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;->magicPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/linked/resources/DnsResource;--->matchResource(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILjava/lang/String;)Ljava/util/regex/Matcher;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
