.class public Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;
.super Ljava/lang/Object;
.source "SignEncryptParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private inputUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private outputUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final signEncryptData:Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 85
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;->inputUris:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;->outputUris:Ljava/util/ArrayList;

    .line 86
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;->signEncryptData:Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;---><init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;-><init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;)V

    return-void
.end method


# virtual methods
.method public addInputUris(Ljava/util/Collection;)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 101
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;->inputUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;--->addInputUris(Ljava/util/Collection;)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public addOutputUris(Ljava/util/Collection;)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 97
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;->outputUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;--->addOutputUris(Ljava/util/Collection;)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public build()Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;
    .locals 8

    move-object/16 v5, p0

    .line 90
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel;

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;->signEncryptData:Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;->inputUris:Ljava/util/ArrayList;

    .line 91
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;->outputUris:Ljava/util/ArrayList;

    .line 92
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel;-><init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Ljava/util/List;Ljava/util/List;[B)V

    return-object v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;--->build()Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
