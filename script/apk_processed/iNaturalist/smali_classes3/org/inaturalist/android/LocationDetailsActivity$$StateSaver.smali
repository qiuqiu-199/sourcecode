.class public Lorg/inaturalist/android/LocationDetailsActivity$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "LocationDetailsActivity$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/inaturalist/android/LocationDetailsActivity;",
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

    sput-object v0, Lorg/inaturalist/android/LocationDetailsActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "org.inaturalist.android.LocationDetailsActivity$$StateSaver"

    sget-object v2, Lorg/inaturalist/android/LocationDetailsActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lorg/inaturalist/android/LocationDetailsActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

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
    check-cast p1, Lorg/inaturalist/android/LocationDetailsActivity;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/LocationDetailsActivity$$StateSaver;->restore(Lorg/inaturalist/android/LocationDetailsActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/inaturalist/android/LocationDetailsActivity;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 61
    sget-object v0, Lorg/inaturalist/android/LocationDetailsActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIsReadOnly"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/LocationDetailsActivity;->mIsReadOnly:Z

    .line 62
    sget-object v0, Lorg/inaturalist/android/LocationDetailsActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mAccuracy"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getDouble(Landroid/os/Bundle;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/inaturalist/android/LocationDetailsActivity;->mAccuracy:D

    .line 63
    sget-object v0, Lorg/inaturalist/android/LocationDetailsActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLatitude"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoxedDouble(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/LocationDetailsActivity;->mLatitude:Ljava/lang/Double;

    .line 64
    sget-object v0, Lorg/inaturalist/android/LocationDetailsActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLongitude"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoxedDouble(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/LocationDetailsActivity;->mLongitude:Ljava/lang/Double;

    .line 65
    sget-object v0, Lorg/inaturalist/android/LocationDetailsActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservation"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lorg/inaturalist/android/Observation;

    iput-object p2, p1, Lorg/inaturalist/android/LocationDetailsActivity;->mObservation:Lorg/inaturalist/android/Observation;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/LocationDetailsActivity;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/LocationDetailsActivity$$StateSaver;->save(Lorg/inaturalist/android/LocationDetailsActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/inaturalist/android/LocationDetailsActivity;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/inaturalist/android/LocationDetailsActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIsReadOnly"

    iget-boolean v2, p1, Lorg/inaturalist/android/LocationDetailsActivity;->mIsReadOnly:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 52
    sget-object v0, Lorg/inaturalist/android/LocationDetailsActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mAccuracy"

    iget-wide v2, p1, Lorg/inaturalist/android/LocationDetailsActivity;->mAccuracy:D

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/evernote/android/state/InjectionHelper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;D)V

    .line 53
    sget-object v0, Lorg/inaturalist/android/LocationDetailsActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLatitude"

    iget-object v2, p1, Lorg/inaturalist/android/LocationDetailsActivity;->mLatitude:Ljava/lang/Double;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoxedDouble(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    .line 54
    sget-object v0, Lorg/inaturalist/android/LocationDetailsActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLongitude"

    iget-object v2, p1, Lorg/inaturalist/android/LocationDetailsActivity;->mLongitude:Ljava/lang/Double;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoxedDouble(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    .line 55
    sget-object v0, Lorg/inaturalist/android/LocationDetailsActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservation"

    iget-object p1, p1, Lorg/inaturalist/android/LocationDetailsActivity;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
