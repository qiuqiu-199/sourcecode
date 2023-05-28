.class Lorg/inaturalist/android/MentionsAutoComplete$3;
.super Ljava/lang/Object;
.source "MentionsAutoComplete.java"

# interfaces
.implements Lorg/inaturalist/android/ActivityHelper$isListScrollable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MentionsAutoComplete;->refreshViewState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MentionsAutoComplete;

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MentionsAutoComplete;F)V
    .locals 0

    .line 332
    iput-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete$3;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    iput p2, p0, Lorg/inaturalist/android/MentionsAutoComplete$3;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isListScrollable(Z)V
    .locals 7

    if-nez p1, :cond_0

    .line 337
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete$3;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {p1}, Lorg/inaturalist/android/MentionsAutoComplete;->access$700(Lorg/inaturalist/android/MentionsAutoComplete;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 338
    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete$3;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {v0}, Lorg/inaturalist/android/MentionsAutoComplete;->access$800(Lorg/inaturalist/android/MentionsAutoComplete;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ActivityHelper;->dpToPx(I)F

    move-result v0

    iget-object v1, p0, Lorg/inaturalist/android/MentionsAutoComplete$3;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {v1}, Lorg/inaturalist/android/MentionsAutoComplete;->access$700(Lorg/inaturalist/android/MentionsAutoComplete;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 339
    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete$3;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {v0}, Lorg/inaturalist/android/MentionsAutoComplete;->access$700(Lorg/inaturalist/android/MentionsAutoComplete;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete$3;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {v0}, Lorg/inaturalist/android/MentionsAutoComplete;->access$700(Lorg/inaturalist/android/MentionsAutoComplete;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 342
    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete$3;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {v0}, Lorg/inaturalist/android/MentionsAutoComplete;->access$900(Lorg/inaturalist/android/MentionsAutoComplete;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete$3;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {v0}, Lorg/inaturalist/android/MentionsAutoComplete;->access$600(Lorg/inaturalist/android/MentionsAutoComplete;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    iget v0, p0, Lorg/inaturalist/android/MentionsAutoComplete$3;->val$y:F

    float-to-int v0, v0

    iget-object v4, p0, Lorg/inaturalist/android/MentionsAutoComplete$3;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {v4}, Lorg/inaturalist/android/MentionsAutoComplete;->access$600(Lorg/inaturalist/android/MentionsAutoComplete;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getScrollY()I

    move-result v4

    sub-int v4, v0, v4

    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete$3;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {v0}, Lorg/inaturalist/android/MentionsAutoComplete;->access$900(Lorg/inaturalist/android/MentionsAutoComplete;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    iget v6, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method
