.class Lorg/inaturalist/android/GuideDetails$10;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideDetails;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/GuideDetails;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$10;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 897
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$10;->this$0:Lorg/inaturalist/android/GuideDetails;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/inaturalist/android/GuideDetails;->mRecommendedPrediate:Ljava/lang/String;

    .line 898
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$10;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$1800(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideTaxonFilter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/GuideTaxonFilter;->clearTags()V

    .line 899
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$10;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$1700(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->notifyDataSetChanged()V

    .line 900
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$10;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$700(Lorg/inaturalist/android/GuideDetails;)V

    .line 902
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0xb

    if-lt p1, v1, :cond_0

    .line 903
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$10;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$2100(Lorg/inaturalist/android/GuideDetails;)Landroid/widget/ListView;

    move-result-object p1

    const/16 v1, 0x12c

    invoke-virtual {p1, v0, v0, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    goto :goto_0

    .line 905
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$10;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$2100(Lorg/inaturalist/android/GuideDetails;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :goto_0
    return-void
.end method
