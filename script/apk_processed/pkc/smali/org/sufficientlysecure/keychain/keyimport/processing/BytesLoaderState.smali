.class public Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;
.super Ljava/lang/Object;
.source "BytesLoaderState.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;


# instance fields
.field public mDataUri:Landroid/net/Uri;

.field public mKeyBytes:[B


# direct methods
.method public constructor <init>([BLandroid/net/Uri;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;->mKeyBytes:[B

    .line 29
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;->mDataUri:Landroid/net/Uri;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;---><init>([BLandroid/net/Uri;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public isBasicModeSupported()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x1

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;--->isBasicModeSupported()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
