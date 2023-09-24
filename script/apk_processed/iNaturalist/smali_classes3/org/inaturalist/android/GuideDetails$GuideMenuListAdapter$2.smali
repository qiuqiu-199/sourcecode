.class Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$2;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$2;->this$1:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 692
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GuideDetails$GuideMenuItem;

    if-nez p1, :cond_0

    return-void

    .line 694
    :cond_0
    invoke-interface {p1}, Lorg/inaturalist/android/GuideDetails$GuideMenuItem;->isSectionHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 698
    :cond_1
    check-cast p1, Lorg/inaturalist/android/GuideDetails$GuideMenuTag;

    invoke-virtual {p1}, Lorg/inaturalist/android/GuideDetails$GuideMenuTag;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 700
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$2;->this$1:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->access$1600(Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;)Lorg/inaturalist/android/GuideTaxonFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GuideTaxonFilter;->hasTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 701
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$2;->this$1:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->access$1600(Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;)Lorg/inaturalist/android/GuideTaxonFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GuideTaxonFilter;->removeTag(Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$2;->this$1:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->access$1600(Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;)Lorg/inaturalist/android/GuideTaxonFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GuideTaxonFilter;->addTag(Ljava/lang/String;)V

    .line 706
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$2;->this$1:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$700(Lorg/inaturalist/android/GuideDetails;)V

    .line 707
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$2;->this$1:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$1700(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->notifyDataSetChanged()V

    return-void
.end method
