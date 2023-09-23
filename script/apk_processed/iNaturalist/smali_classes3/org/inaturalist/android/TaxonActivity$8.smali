.class Lorg/inaturalist/android/TaxonActivity$8;
.super Ljava/lang/Object;
.source "TaxonActivity.java"

# interfaces
.implements Lorg/inaturalist/android/ScrollableMapFragment$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 786
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$8;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch()V
    .locals 2

    .line 789
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$8;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonActivity;->access$1600(Lorg/inaturalist/android/TaxonActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
