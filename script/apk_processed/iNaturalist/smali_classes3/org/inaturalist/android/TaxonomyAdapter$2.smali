.class Lorg/inaturalist/android/TaxonomyAdapter$2;
.super Ljava/lang/Object;
.source "TaxonomyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonomyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonomyAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonomyAdapter;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/inaturalist/android/TaxonomyAdapter$2;->this$0:Lorg/inaturalist/android/TaxonomyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 140
    iget-object p1, p0, Lorg/inaturalist/android/TaxonomyAdapter$2;->this$0:Lorg/inaturalist/android/TaxonomyAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/TaxonomyAdapter;->setExpanded(Z)V

    .line 141
    iget-object p1, p0, Lorg/inaturalist/android/TaxonomyAdapter$2;->this$0:Lorg/inaturalist/android/TaxonomyAdapter;

    invoke-virtual {p1}, Lorg/inaturalist/android/TaxonomyAdapter;->notifyDataSetChanged()V

    return-void
.end method
