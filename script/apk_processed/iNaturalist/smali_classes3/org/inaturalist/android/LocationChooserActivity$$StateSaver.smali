.class public Lorg/inaturalist/android/LocationChooserActivity$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "LocationChooserActivity$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/inaturalist/android/LocationChooserActivity;",
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

    sput-object v0, Lorg/inaturalist/android/LocationChooserActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "org.inaturalist.android.LocationChooserActivity$$StateSaver"

    sget-object v2, Lorg/inaturalist/android/LocationChooserActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lorg/inaturalist/android/LocationChooserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

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
    check-cast p1, Lorg/inaturalist/android/LocationChooserActivity;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/LocationChooserActivity$$StateSaver;->restore(Lorg/inaturalist/android/LocationChooserActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/inaturalist/android/LocationChooserActivity;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 60
    sget-object v0, Lorg/inaturalist/android/LocationChooserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLatitude"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getDouble(Landroid/os/Bundle;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/inaturalist/android/LocationChooserActivity;->mLatitude:D

    .line 61
    sget-object v0, Lorg/inaturalist/android/LocationChooserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mAccuracy"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getDouble(Landroid/os/Bundle;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/inaturalist/android/LocationChooserActivity;->mAccuracy:D

    .line 62
    sget-object v0, Lorg/inaturalist/android/LocationChooserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLongitude"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getDouble(Landroid/os/Bundle;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/inaturalist/android/LocationChooserActivity;->mLongitude:D

    .line 63
    sget-object v0, Lorg/inaturalist/android/LocationChooserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIconicTaxonName"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/inaturalist/android/LocationChooserActivity;->mIconicTaxonName:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/LocationChooserActivity;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/LocationChooserActivity$$StateSaver;->save(Lorg/inaturalist/android/LocationChooserActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/inaturalist/android/LocationChooserActivity;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/inaturalist/android/LocationChooserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLatitude"

    iget-wide v2, p1, Lorg/inaturalist/android/LocationChooserActivity;->mLatitude:D

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/evernote/android/state/InjectionHelper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;D)V

    .line 52
    sget-object v0, Lorg/inaturalist/android/LocationChooserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mAccuracy"

    iget-wide v2, p1, Lorg/inaturalist/android/LocationChooserActivity;->mAccuracy:D

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/evernote/android/state/InjectionHelper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;D)V

    .line 53
    sget-object v0, Lorg/inaturalist/android/LocationChooserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mLongitude"

    iget-wide v2, p1, Lorg/inaturalist/android/LocationChooserActivity;->mLongitude:D

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/evernote/android/state/InjectionHelper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;D)V

    .line 54
    sget-object v0, Lorg/inaturalist/android/LocationChooserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mIconicTaxonName"

    iget-object p1, p1, Lorg/inaturalist/android/LocationChooserActivity;->mIconicTaxonName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
