.class public abstract Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;
.super Ljava/lang/Object;
.source "SecurityTokenInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;,
        Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;,
        Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[B

.field private static final GNUK_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final SUPPORTED_USB_SETUP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_USB_TOKENS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0x14

    .line 42
    new-array v0, v0, [B

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->EMPTY_ARRAY:[B

    const-string v0, "FSIJ-(\\d\\.\\d\\.\\d)-.+"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->GNUK_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 123
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->YUBIKEY_NEO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->YUBIKEY_4:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_PRO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_STORAGE:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_START_OLD:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_START_1_25_AND_NEWER:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->GNUK_OLD:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->GNUK_1_25_AND_NEWER:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->LEDGER_NANO_S:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const/16 v10, 0x8

    aput-object v2, v1, v10

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->SUPPORTED_USB_TOKENS:Ljava/util/Set;

    .line 135
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v9, [Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->YUBIKEY_NEO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v2, v1, v3

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->YUBIKEY_4:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v2, v1, v4

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_PRO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v2, v1, v5

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_STORAGE:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v2, v1, v6

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_START_1_25_AND_NEWER:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v2, v1, v7

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->GNUK_1_25_AND_NEWER:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->SUPPORTED_USB_SETUP:Ljava/util/Set;

    return-void

    const-string v11, "M_InsDal"

    const-string v12, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;---><clinit>()V"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;[[B[BLjava/lang/String;Ljava/lang/String;IIZ)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;
    .locals 14

    move-object/16 v11, p0

    move-object/16 v12, p1

    move-object/16 v13, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move/16 p3, p6

    move/16 p4, p7

    move/16 p5, p8

    move-object v0, v13

    .line 68
    new-instance v3, Ljava/util/ArrayList;

    array-length v1, v0

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 70
    sget-object v5, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->EMPTY_ARRAY:[B

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_0

    .line 71
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_1
    new-instance v10, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;IIZ)V

    return-object v10

    const-string p6, "M_InsDal"

    const-string p7, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;--->create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;[[B[BLjava/lang/String;Ljava/lang/String;IIZ)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;"

    invoke-static/range {p6 .. p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstanceDebugKeyserver()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;
    .locals 5

    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is only available in debug builds!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;--->newInstanceDebugKeyserver()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstanceDebugLocked()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;
    .locals 5

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is only available in debug builds!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;--->newInstanceDebugLocked()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstanceDebugLockedHard()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;
    .locals 5

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is only available in debug builds!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;--->newInstanceDebugLockedHard()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstanceDebugUri()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;
    .locals 5

    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is only available in debug builds!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;--->newInstanceDebugUri()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static parseGnukVersionString(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;
    .locals 5

    move-object/16 v2, p0

    const/4 v0, 0x0

    if-nez v2, :cond_0

    return-object v0

    .line 164
    :cond_0
    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->GNUK_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 168
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;->create(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;--->parseGnukVersionString(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getAid()[B
.end method

.method public abstract getFingerprints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public getOpenPgpVersion()D
    .locals 8

    move-object/16 v5, p0

    .line 172
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getAid()[B

    move-result-object v0

    const/4 v1, 0x7

    .line 173
    aget-byte v1, v0, v1

    int-to-float v1, v1

    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    float-to-double v1, v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    .line 175
    aget-byte v0, v0, v2

    int-to-float v0, v0

    add-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;--->getOpenPgpVersion()D"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getTokenType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;
.end method

.method public abstract getTransportType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getVerifyAdminRetries()I
.end method

.method public abstract getVerifyRetries()I
.end method

.method public abstract hasLifeCycleManagement()Z
.end method

.method public isEmpty()Z
    .locals 4

    move-object/16 v1, p0

    .line 61
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getFingerprints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;--->isEmpty()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isPutKeySupported()Z
    .locals 8

    move-object/16 v5, p0

    .line 145
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->SUPPORTED_USB_SETUP:Ljava/util/Set;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getTokenType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 146
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getTransportType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;->NFC:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    return v3

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;--->isPutKeySupported()Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isResetSupported()Z
    .locals 8

    move-object/16 v5, p0

    .line 152
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->SUPPORTED_USB_SETUP:Ljava/util/Set;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getTokenType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 153
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getTransportType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;->NFC:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 154
    :goto_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->hasLifeCycleManagement()Z

    move-result v2

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;--->isResetSupported()Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
