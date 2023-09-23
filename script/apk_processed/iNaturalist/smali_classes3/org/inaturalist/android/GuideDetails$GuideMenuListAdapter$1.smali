.class Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$1;
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

.field final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;[Ljava/lang/String;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$1;->this$1:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$1;->val$values:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 673
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$1;->this$1:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    const-class v1, Lorg/inaturalist/android/TaxonTagPhotosViewer;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "guide_id"

    .line 674
    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$1;->this$1:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v1}, Lorg/inaturalist/android/GuideDetails;->access$100(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideXML;

    move-result-object v1

    invoke-virtual {v1}, Lorg/inaturalist/android/GuideXML;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "guide_xml_filename"

    .line 675
    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$1;->this$1:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    iget-object v1, v1, Lorg/inaturalist/android/GuideDetails;->mGuideXmlFilename:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "tag_name"

    .line 676
    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$1;->val$values:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "tag_value"

    .line 677
    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$1;->val$values:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$1;->this$1:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GuideDetails;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
