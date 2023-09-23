.class Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$1;
.super Ljava/lang/Object;
.source "ExploreFiltersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;->onBindViewHolder(Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;

.field final synthetic val$iconicTaxonName:Ljava/lang/String;

.field final synthetic val$isSelected:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;Ljava/lang/String;ZI)V
    .locals 0

    .line 765
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$1;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$1;->val$iconicTaxonName:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$1;->val$isSelected:Z

    iput p4, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 769
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$1;->val$iconicTaxonName:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$1;->val$isSelected:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 770
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$1;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;->access$1600(Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$1;->val$position:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 772
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$1;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;->access$1700(Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;)Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$OnIconicTaxonSelected;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$1;->val$iconicTaxonName:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$1;->val$isSelected:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$OnIconicTaxonSelected;->onIconicITaxonSelected(Ljava/lang/String;Z)V

    return-void
.end method
