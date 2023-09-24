.class public abstract Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;
.super Ljava/lang/Object;
.source "SecurityTokenInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 179
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;
    .locals 4

    move-object/16 v1, p0

    const-string v0, "[0-9]+(\\.[0-9]+)*"

    .line 184
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid version format"

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo_Version;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo_Version;-><init>(Ljava/lang/String;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;--->create(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 178
    check-cast p1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;->compareTo(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;)I
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 192
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;->getVersion()Ljava/lang/String;

    move-result-object v7

    const-string v1, "\\."

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 194
    array-length v1, v0

    array-length v2, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 196
    array-length v4, v0

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v3

    .line 197
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 198
    :goto_1
    array-length v5, v7

    if-ge v3, v5, :cond_1

    aget-object v5, v7, v3

    .line 199
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-ge v4, v5, :cond_2

    const/4 v7, -0x1

    return v7

    :cond_2
    if-le v4, v5, :cond_3

    const/4 v7, 0x1

    return v7

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;--->compareTo(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;)I"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method abstract getVersion()Ljava/lang/String;
.end method
