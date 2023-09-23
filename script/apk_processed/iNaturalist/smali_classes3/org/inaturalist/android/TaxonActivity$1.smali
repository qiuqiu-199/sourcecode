.class Lorg/inaturalist/android/TaxonActivity$1;
.super Ljava/lang/Object;
.source "TaxonActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonActivity;->initSeasonabilityCharts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonActivity;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$1;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$1;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonActivity;->access$300(Lorg/inaturalist/android/TaxonActivity;)Ljava/util/TreeMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$1;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonActivity;->access$500(Lorg/inaturalist/android/TaxonActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
