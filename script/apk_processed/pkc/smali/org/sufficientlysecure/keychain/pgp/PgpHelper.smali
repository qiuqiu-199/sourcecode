.class public Lorg/sufficientlysecure/keychain/pgp/PgpHelper;
.super Ljava/lang/Object;
.source "PgpHelper.java"


# static fields
.field private static final KEYDATA_START_PATTERN:Ljava/util/regex/Pattern;

.field public static final PGP_CLEARTEXT_SIGNATURE:Ljava/util/regex/Pattern;

.field public static final PGP_MESSAGE:Ljava/util/regex/Pattern;

.field public static final PGP_PUBLIC_KEY:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, ".*?(-----BEGIN PGP MESSAGE-----.*?-----END PGP MESSAGE-----).*"

    const/16 v1, 0x20

    .line 35
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->PGP_MESSAGE:Ljava/util/regex/Pattern;

    const-string v0, ".*?(-----BEGIN PGP SIGNED MESSAGE-----.*?-----BEGIN PGP SIGNATURE-----.*?-----END PGP SIGNATURE-----).*"

    .line 39
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->PGP_CLEARTEXT_SIGNATURE:Ljava/util/regex/Pattern;

    const-string v0, ".*?(-----BEGIN PGP PUBLIC KEY BLOCK-----.*?-----END PGP PUBLIC KEY BLOCK-----).*"

    .line 43
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->PGP_PUBLIC_KEY:Ljava/util/regex/Pattern;

    const-string v0, "\\s(m[A-Q])"

    .line 46
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->KEYDATA_START_PATTERN:Ljava/util/regex/Pattern;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpHelper;---><clinit>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/PgpHelper;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fixPgpCleartextSignature(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 72
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "\r\n"

    const-string v1, "\n"

    .line 76
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "\r"

    const-string v1, "\n"

    .line 78
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/PgpHelper;--->fixPgpCleartextSignature(Ljava/lang/CharSequence;)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fixPgpMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    const-string v0, "\r\n"

    const-string v1, "\n"

    .line 53
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "\r"

    const-string v1, "\n"

    .line 55
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, " +\n"

    const-string v1, "\n"

    .line 58
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "\n\n+"

    const-string v1, "\n\n"

    .line 60
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "\\xa0"

    const-string v1, " "

    .line 63
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/PgpHelper;--->fixPgpMessage(Ljava/lang/String;)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getPgpMessageContent(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 87
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->PGP_MESSAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->fixPgpMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 93
    :cond_0
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->PGP_CLEARTEXT_SIGNATURE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->fixPgpCleartextSignature(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    const/4 v3, 0x0

    return-object v3

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/PgpHelper;--->getPgpMessageContent(Ljava/lang/CharSequence;)Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getPgpPublicKeyContent(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 105
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->PGP_PUBLIC_KEY:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 110
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->fixPgpMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->reformatPgpPublicKeyBlock(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpHelper;--->getPgpPublicKeyContent(Ljava/lang/CharSequence;)Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static reformatPgpPublicKeyBlock(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    move-object/16 v5, p0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "-----BEGIN PGP PUBLIC KEY BLOCK-----"

    .line 152
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "-----END PGP PUBLIC KEY BLOCK-----"

    .line 153
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v1, :cond_2

    if-gez v2, :cond_0

    goto :goto_1

    .line 158
    :cond_0
    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->KEYDATA_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v5, "Could not find start of key data!"

    const/4 v1, 0x0

    .line 160
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    .line 163
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    .line 165
    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\s+"

    const-string v4, "\n"

    .line 166
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "-----BEGIN PGP PUBLIC KEY BLOCK-----\n"

    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 169
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-----END PGP PUBLIC KEY BLOCK-----\n"

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x22

    .line 173
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 176
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    return-object v5

    .line 180
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/pgp/PgpHelper;--->reformatPgpPublicKeyBlock(Ljava/lang/String;)Ljava/lang/String;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
