.class public abstract Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;
.super Ljava/lang/Object;
.source "PgpSignEncryptInputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createForBytes(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Landroid/net/Uri;[B)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 41
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;-><init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Landroid/net/Uri;Landroid/net/Uri;[B)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;--->createForBytes(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Landroid/net/Uri;[B)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createForInputUri(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Landroid/net/Uri;Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 46
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;-><init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Landroid/net/Uri;Landroid/net/Uri;[B)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;--->createForInputUri(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Landroid/net/Uri;Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getData()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;
.end method

.method public abstract getInputBytes()[B
.end method

.method public abstract getInputUri()Landroid/net/Uri;
.end method

.method public abstract getOutputUri()Landroid/net/Uri;
.end method
