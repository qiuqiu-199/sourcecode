.class public Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;
.super Ljava/lang/Object;
.source "ApiAppsLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListedApp"
.end annotation


# instance fields
.field public final applicationIcon:Landroid/graphics/drawable/Drawable;

.field public final applicationIconRes:Ljava/lang/Integer;

.field public final isInstalled:Z

.field public final isRegistered:Z

.field public final packageName:Ljava/lang/String;

.field public final readableName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    .line 93
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->packageName:Ljava/lang/String;

    .line 95
    iput-boolean v2, v0, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->isInstalled:Z

    .line 96
    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->isRegistered:Z

    .line 97
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->readableName:Ljava/lang/String;

    .line 98
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 99
    iput-object p3, v0, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->applicationIconRes:Ljava/lang/Integer;

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;---><init>(Ljava/lang/String;ZZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public withIsInstalled()Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;
    .locals 11

    move-object/16 v8, p0

    .line 103
    new-instance v7, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;

    iget-object v1, v8, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->packageName:Ljava/lang/String;

    iget-boolean v3, v8, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->isRegistered:Z

    iget-object v4, v8, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->readableName:Ljava/lang/String;

    iget-object v5, v8, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->applicationIcon:Landroid/graphics/drawable/Drawable;

    iget-object v6, v8, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->applicationIconRes:Ljava/lang/Integer;

    const/4 v2, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;-><init>(Ljava/lang/String;ZZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    return-object v7

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;--->withIsInstalled()Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
