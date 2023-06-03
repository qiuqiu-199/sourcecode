.class Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$1;
.super Ljava/lang/Object;
.source "TaxonActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;)V
    .locals 0

    .line 1085
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$1;->this$0:Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1085
    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$1;->compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .locals 2

    const-string v0, "position"

    const/4 v1, 0x0

    .line 1088
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "position"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method
