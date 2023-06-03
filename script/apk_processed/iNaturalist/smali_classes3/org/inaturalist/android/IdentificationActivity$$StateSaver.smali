.class public Lorg/inaturalist/android/IdentificationActivity$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "IdentificationActivity$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/inaturalist/android/IdentificationActivity;",
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

    sput-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "org.inaturalist.android.IdentificationActivity$$StateSaver"

    sget-object v2, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

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
    check-cast p1, Lorg/inaturalist/android/IdentificationActivity;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->restore(Lorg/inaturalist/android/IdentificationActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/inaturalist/android/IdentificationActivity;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 66
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFromSuggestion"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/IdentificationActivity;->mFromSuggestion:Z

    .line 67
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mSuggestId"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/inaturalist/android/IdentificationActivity;->mSuggestId:Z

    .line 68
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLatitude"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getDouble(Landroid/os/Bundle;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/inaturalist/android/IdentificationActivity;->mLatitude:D

    .line 69
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLongitude"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getDouble(Landroid/os/Bundle;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/inaturalist/android/IdentificationActivity;->mLongitude:D

    .line 70
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObsId"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/IdentificationActivity;->mObsId:I

    .line 71
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObsIdInternal"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/IdentificationActivity;->mObsIdInternal:I

    .line 72
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservationJson"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/IdentificationActivity;->mObservationJson:Ljava/lang/String;

    .line 73
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObsPhotoFilename"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/IdentificationActivity;->mObsPhotoFilename:Ljava/lang/String;

    .line 74
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObsPhotoUrl"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/IdentificationActivity;->mObsPhotoUrl:Ljava/lang/String;

    .line 75
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservedOn"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/sql/Timestamp;

    iput-object p2, p1, Lorg/inaturalist/android/IdentificationActivity;->mObservedOn:Ljava/sql/Timestamp;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/IdentificationActivity;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->save(Lorg/inaturalist/android/IdentificationActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/inaturalist/android/IdentificationActivity;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFromSuggestion"

    iget-boolean v2, p1, Lorg/inaturalist/android/IdentificationActivity;->mFromSuggestion:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 52
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mSuggestId"

    iget-boolean v2, p1, Lorg/inaturalist/android/IdentificationActivity;->mSuggestId:Z

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 53
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLatitude"

    iget-wide v2, p1, Lorg/inaturalist/android/IdentificationActivity;->mLatitude:D

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/evernote/android/state/InjectionHelper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;D)V

    .line 54
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLongitude"

    iget-wide v2, p1, Lorg/inaturalist/android/IdentificationActivity;->mLongitude:D

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/evernote/android/state/InjectionHelper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;D)V

    .line 55
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObsId"

    iget v2, p1, Lorg/inaturalist/android/IdentificationActivity;->mObsId:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObsIdInternal"

    iget v2, p1, Lorg/inaturalist/android/IdentificationActivity;->mObsIdInternal:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservationJson"

    iget-object v2, p1, Lorg/inaturalist/android/IdentificationActivity;->mObservationJson:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObsPhotoFilename"

    iget-object v2, p1, Lorg/inaturalist/android/IdentificationActivity;->mObsPhotoFilename:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObsPhotoUrl"

    iget-object v2, p1, Lorg/inaturalist/android/IdentificationActivity;->mObsPhotoUrl:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lorg/inaturalist/android/IdentificationActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservedOn"

    iget-object p1, p1, Lorg/inaturalist/android/IdentificationActivity;->mObservedOn:Ljava/sql/Timestamp;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
