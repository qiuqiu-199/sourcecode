.class public Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "ObservationPhotosViewer$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/inaturalist/android/ObservationPhotosViewer;",
        ">",
        "Lcom/evernote/android/state/Injector$Object<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final BUNDLERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/evernote/android/state/Bundler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final HELPER:Lcom/evernote/android/state/InjectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "org.inaturalist.android.ObservationPhotosViewer$$StateSaver"

    sget-object v2, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 46
    sget-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mObservation"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$JSONObjectBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$JSONObjectBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/evernote/android/state/Injector$Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/ObservationPhotosViewer;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->restore(Lorg/inaturalist/android/ObservationPhotosViewer;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/inaturalist/android/ObservationPhotosViewer;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 64
    sget-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIsTaxon"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationPhotosViewer;->mIsTaxon:Z

    .line 65
    sget-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mReadOnly"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationPhotosViewer;->mReadOnly:Z

    .line 66
    sget-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIsNewObservation"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationPhotosViewer;->mIsNewObservation:Z

    .line 67
    sget-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mCurrentPhotoIndex"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/ObservationPhotosViewer;->mCurrentPhotoIndex:I

    .line 68
    sget-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservationIdInternal"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/ObservationPhotosViewer;->mObservationIdInternal:I

    .line 69
    sget-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservationId"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/ObservationPhotosViewer;->mObservationId:I

    .line 70
    sget-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservation"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    iput-object p2, p1, Lorg/inaturalist/android/ObservationPhotosViewer;->mObservation:Lorg/json/JSONObject;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/ObservationPhotosViewer;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->save(Lorg/inaturalist/android/ObservationPhotosViewer;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/inaturalist/android/ObservationPhotosViewer;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIsTaxon"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationPhotosViewer;->mIsTaxon:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 53
    sget-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mReadOnly"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationPhotosViewer;->mReadOnly:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 54
    sget-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIsNewObservation"

    iget-boolean v2, p1, Lorg/inaturalist/android/ObservationPhotosViewer;->mIsNewObservation:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 55
    sget-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mCurrentPhotoIndex"

    iget v2, p1, Lorg/inaturalist/android/ObservationPhotosViewer;->mCurrentPhotoIndex:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservationIdInternal"

    iget v2, p1, Lorg/inaturalist/android/ObservationPhotosViewer;->mObservationIdInternal:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservationId"

    iget v2, p1, Lorg/inaturalist/android/ObservationPhotosViewer;->mObservationId:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lorg/inaturalist/android/ObservationPhotosViewer$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservation"

    iget-object p1, p1, Lorg/inaturalist/android/ObservationPhotosViewer;->mObservation:Lorg/json/JSONObject;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
