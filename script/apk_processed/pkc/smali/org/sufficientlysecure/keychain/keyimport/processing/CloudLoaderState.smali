.class public Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;
.super Ljava/lang/Object;
.source "CloudLoaderState.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;


# instance fields
.field mCloudPrefs:Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;

.field mServerQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;->mServerQuery:Ljava/lang/String;

    .line 29
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;->mCloudPrefs:Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;---><init>(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public isBasicModeSupported()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;--->isBasicModeSupported()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
