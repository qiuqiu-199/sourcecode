.class public final Lokhttp3/internal/tls/OkHostnameVerifier;
.super Ljava/lang/Object;
.source "OkHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final ALT_DNS_NAME:I = 0x2

.field private static final ALT_IPA_NAME:I = 0x7

.field public static final INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lokhttp3/internal/tls/OkHostnameVerifier;

    invoke-direct {v0}, Lokhttp3/internal/tls/OkHostnameVerifier;-><init>()V

    sput-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x7

    .line 99
    invoke-static {p0, v0}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    .line 100
    invoke-static {p0, v1}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p0

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method private static getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p0

    if-nez p0, :cond_0

    .line 112
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 114
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 115
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 116
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 119
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    .line 124
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return-object v0

    .line 132
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, ".."

    .line 147
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_b

    .line 151
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ".."

    .line 152
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v1, "."

    .line 166
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x2e

    if-nez v1, :cond_2

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v1, "."

    .line 169
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 174
    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "*"

    .line 177
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 179
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    const-string v1, "*."

    .line 193
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x2a

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    goto :goto_0

    .line 202
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_6

    return v0

    :cond_6
    const-string v1, "*."

    .line 207
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v0

    .line 213
    :cond_7
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 220
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v1, p2

    if-lez v1, :cond_9

    sub-int/2addr v1, v3

    .line 222
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p1

    if-eq p1, v4, :cond_9

    return v0

    :cond_9
    return v3

    :cond_a
    :goto_0
    return v0

    :cond_b
    :goto_1
    return v0

    :cond_c
    :goto_2
    return v0
.end method

.method private verifyHostName(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 6

    .line 76
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 78
    invoke-static {p2, v0}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 81
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    .line 87
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    .line 89
    new-instance v0, Lokhttp3/internal/tls/DistinguishedNameParser;

    invoke-direct {v0, p2}, Lokhttp3/internal/tls/DistinguishedNameParser;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string p2, "cn"

    invoke-virtual {v0, p2}, Lokhttp3/internal/tls/DistinguishedNameParser;->findMostSpecific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 91
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    return v3
.end method

.method private verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 4

    const/4 v0, 0x7

    .line 65
    invoke-static {p2, v0}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p2

    .line 66
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 67
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 1

    .line 58
    invoke-static {p1}, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    const/4 v0, 0x0

    .line 50
    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    .line 51
    aget-object p2, p2, v0

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method