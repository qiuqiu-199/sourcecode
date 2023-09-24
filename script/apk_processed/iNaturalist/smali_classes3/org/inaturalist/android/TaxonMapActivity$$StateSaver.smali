.class public Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "TaxonMapActivity$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/inaturalist/android/TaxonMapActivity;",
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

    sput-object v0, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "org.inaturalist.android.TaxonMapActivity$$StateSaver"

    sget-object v2, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 46
    sget-object v0, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

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
    check-cast p1, Lorg/inaturalist/android/TaxonMapActivity;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->restore(Lorg/inaturalist/android/TaxonMapActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/inaturalist/android/TaxonMapActivity;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 63
    sget-object v0, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mMapLatitude"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getDouble(Landroid/os/Bundle;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/inaturalist/android/TaxonMapActivity;->mMapLatitude:D

    .line 64
    sget-object v0, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mMapLongitude"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getDouble(Landroid/os/Bundle;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/inaturalist/android/TaxonMapActivity;->mMapLongitude:D

    .line 65
    sget-object v0, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mMapZoom"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getFloat(Landroid/os/Bundle;Ljava/lang/String;)F

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/TaxonMapActivity;->mMapZoom:F

    .line 66
    sget-object v0, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonId"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/inaturalist/android/TaxonMapActivity;->mTaxonId:I

    .line 67
    sget-object v0, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonName"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/TaxonMapActivity;->mTaxonName:Ljava/lang/String;

    .line 68
    sget-object v0, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservation"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/inaturalist/android/BetterJSONObject;

    iput-object p2, p1, Lorg/inaturalist/android/TaxonMapActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/TaxonMapActivity;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->save(Lorg/inaturalist/android/TaxonMapActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/inaturalist/android/TaxonMapActivity;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mMapLatitude"

    iget-wide v2, p1, Lorg/inaturalist/android/TaxonMapActivity;->mMapLatitude:D

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/evernote/android/state/InjectionHelper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;D)V

    .line 53
    sget-object v0, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mMapLongitude"

    iget-wide v2, p1, Lorg/inaturalist/android/TaxonMapActivity;->mMapLongitude:D

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/evernote/android/state/InjectionHelper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;D)V

    .line 54
    sget-object v0, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mMapZoom"

    iget v2, p1, Lorg/inaturalist/android/TaxonMapActivity;->mMapZoom:F

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putFloat(Landroid/os/Bundle;Ljava/lang/String;F)V

    .line 55
    sget-object v0, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonId"

    iget v2, p1, Lorg/inaturalist/android/TaxonMapActivity;->mTaxonId:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mTaxonName"

    iget-object v2, p1, Lorg/inaturalist/android/TaxonMapActivity;->mTaxonName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lorg/inaturalist/android/TaxonMapActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mObservation"

    iget-object p1, p1, Lorg/inaturalist/android/TaxonMapActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
