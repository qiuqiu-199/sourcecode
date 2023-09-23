.class public Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "CompareSuggestionActivity$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/inaturalist/android/CompareSuggestionActivity;",
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

    sput-object v0, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "org.inaturalist.android.CompareSuggestionActivity$$StateSaver"

    sget-object v2, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 46
    sget-object v0, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mObservation"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;-><init>()V

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
    check-cast p1, Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->restore(Lorg/inaturalist/android/CompareSuggestionActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/inaturalist/android/CompareSuggestionActivity;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 63
    sget-object v0, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mSuggestionIndex"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionIndex:I

    .line 64
    sget-object v0, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObsId"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mObsId:I

    .line 65
    sget-object v0, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservationPhotoPosition"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotoPosition:I

    .line 66
    sget-object v0, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObsIdInternal"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mObsIdInternal:I

    .line 67
    sget-object v0, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mSuggestionPhotoPosition"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionPhotoPosition:I

    .line 68
    sget-object v0, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservation"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/inaturalist/android/BetterJSONObject;

    iput-object p2, p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->save(Lorg/inaturalist/android/CompareSuggestionActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/inaturalist/android/CompareSuggestionActivity;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mSuggestionIndex"

    iget v2, p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionIndex:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObsId"

    iget v2, p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mObsId:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservationPhotoPosition"

    iget v2, p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotoPosition:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 55
    sget-object v0, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObsIdInternal"

    iget v2, p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mObsIdInternal:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mSuggestionPhotoPosition"

    iget v2, p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionPhotoPosition:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lorg/inaturalist/android/CompareSuggestionActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservation"

    iget-object p1, p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
