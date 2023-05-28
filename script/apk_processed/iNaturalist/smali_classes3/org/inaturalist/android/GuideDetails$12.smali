.class Lorg/inaturalist/android/GuideDetails$12;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 981
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$12;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 984
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GuideTaxonXML;

    .line 987
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lorg/inaturalist/android/GuideDetails$12;->this$0:Lorg/inaturalist/android/GuideDetails;

    const-class p4, Lorg/inaturalist/android/GuideTaxonActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "guide_taxon"

    const/4 p4, 0x1

    .line 988
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "guide_id"

    .line 989
    iget-object p4, p0, Lorg/inaturalist/android/GuideDetails$12;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p4}, Lorg/inaturalist/android/GuideDetails;->access$100(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideXML;

    move-result-object p4

    invoke-virtual {p4}, Lorg/inaturalist/android/GuideXML;->getID()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "taxon_id"

    .line 990
    invoke-virtual {p1}, Lorg/inaturalist/android/GuideTaxonXML;->getTaxonId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "guide_xml_filename"

    .line 991
    iget-object p3, p0, Lorg/inaturalist/android/GuideDetails$12;->this$0:Lorg/inaturalist/android/GuideDetails;

    iget-object p3, p3, Lorg/inaturalist/android/GuideDetails;->mGuideXmlFilename:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$12;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/GuideDetails;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
