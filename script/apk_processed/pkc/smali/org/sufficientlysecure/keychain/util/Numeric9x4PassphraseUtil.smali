.class public Lorg/sufficientlysecure/keychain/util/Numeric9x4PassphraseUtil;
.super Ljava/lang/Object;
.source "Numeric9x4PassphraseUtil.java"


# static fields
.field private static final AUTOCRYPT_TRANSFER_CODE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "(\\d{4}-){8}\\d{4}"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/util/Numeric9x4PassphraseUtil;->AUTOCRYPT_TRANSFER_CODE:Ljava/util/regex/Pattern;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/Numeric9x4PassphraseUtil;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/Numeric9x4PassphraseUtil;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static generateNumeric9x4Passphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;
    .locals 4

    .line 31
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Numeric9x4PassphraseUtil;->generateNumeric9x4Passphrase(Ljava/util/Random;)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v0

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/Numeric9x4PassphraseUtil;--->generateNumeric9x4Passphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static generateNumeric9x4Passphrase(Ljava/util/Random;)Lorg/sufficientlysecure/keychain/util/Passphrase;
    .locals 8

    move-object/16 v5, p0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    if-lez v3, :cond_0

    .line 38
    rem-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    const/16 v4, 0x2d

    .line 40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v4, 0xa

    .line 43
    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_2
    new-instance v5, Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Ljava/lang/String;)V

    return-object v5

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/util/Numeric9x4PassphraseUtil;--->generateNumeric9x4Passphrase(Ljava/util/Random;)Lorg/sufficientlysecure/keychain/util/Passphrase;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static isNumeric9x4Passphrase(Ljava/lang/CharSequence;)Z
    .locals 4

    move-object/16 v1, p0

    .line 57
    sget-object v0, Lorg/sufficientlysecure/keychain/util/Numeric9x4PassphraseUtil;->AUTOCRYPT_TRANSFER_CODE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/Numeric9x4PassphraseUtil;--->isNumeric9x4Passphrase(Ljava/lang/CharSequence;)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static isNumeric9x4Passphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;)Z
    .locals 3

    move-object/16 v0, p0

    .line 53
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Passphrase;->getCharArray()[C

    move-result-object v0

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Numeric9x4PassphraseUtil;->isNumeric9x4Passphrase(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/Numeric9x4PassphraseUtil;--->isNumeric9x4Passphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;)Z"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
