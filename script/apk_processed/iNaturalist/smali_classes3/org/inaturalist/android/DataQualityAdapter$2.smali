.class Lorg/inaturalist/android/DataQualityAdapter$2;
.super Ljava/lang/Object;
.source "DataQualityAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/DataQualityAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/DataQualityAdapter;

.field final synthetic val$disagreeContainer:Landroid/view/ViewGroup;

.field final synthetic val$item:Lorg/inaturalist/android/DataQualityItem;

.field final synthetic val$loading:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/DataQualityAdapter;Lorg/inaturalist/android/DataQualityItem;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAdapter$2;->this$0:Lorg/inaturalist/android/DataQualityAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/DataQualityAdapter$2;->val$item:Lorg/inaturalist/android/DataQualityItem;

    iput-object p3, p0, Lorg/inaturalist/android/DataQualityAdapter$2;->val$loading:Landroid/view/View;

    iput-object p4, p0, Lorg/inaturalist/android/DataQualityAdapter$2;->val$disagreeContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object p1, p0, Lorg/inaturalist/android/DataQualityAdapter$2;->val$item:Lorg/inaturalist/android/DataQualityItem;

    iget-boolean p1, p1, Lorg/inaturalist/android/DataQualityItem;->isVotable:Z

    if-nez p1, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/DataQualityAdapter$2;->val$loading:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lorg/inaturalist/android/DataQualityAdapter$2;->val$disagreeContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 160
    iget-object p1, p0, Lorg/inaturalist/android/DataQualityAdapter$2;->this$0:Lorg/inaturalist/android/DataQualityAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/DataQualityAdapter;->access$000(Lorg/inaturalist/android/DataQualityAdapter;)Lorg/inaturalist/android/DataQualityAdapter$OnDataQualityActions;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAdapter$2;->val$item:Lorg/inaturalist/android/DataQualityItem;

    iget-object v0, v0, Lorg/inaturalist/android/DataQualityItem;->metricName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/inaturalist/android/DataQualityAdapter$OnDataQualityActions;->onDataQualityVoteDelete(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/DataQualityAdapter$2;->this$0:Lorg/inaturalist/android/DataQualityAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/DataQualityAdapter;->access$000(Lorg/inaturalist/android/DataQualityAdapter;)Lorg/inaturalist/android/DataQualityAdapter$OnDataQualityActions;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAdapter$2;->val$item:Lorg/inaturalist/android/DataQualityItem;

    iget-object v0, v0, Lorg/inaturalist/android/DataQualityItem;->metricName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/inaturalist/android/DataQualityAdapter$OnDataQualityActions;->onDataQualityDisagree(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
