.class Lorg/inaturalist/android/ItemSearchActivity$2;
.super Ljava/lang/Object;
.source "ItemSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ItemSearchActivity;->onLoading(Ljava/lang/Boolean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ItemSearchActivity;

.field final synthetic val$count:I

.field final synthetic val$isLoading:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ItemSearchActivity;Ljava/lang/Boolean;I)V
    .locals 0

    .line 228
    iput-object p1, p0, Lorg/inaturalist/android/ItemSearchActivity$2;->this$0:Lorg/inaturalist/android/ItemSearchActivity;

    iput-object p2, p0, Lorg/inaturalist/android/ItemSearchActivity$2;->val$isLoading:Ljava/lang/Boolean;

    iput p3, p0, Lorg/inaturalist/android/ItemSearchActivity$2;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 231
    iget-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity$2;->val$isLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity$2;->this$0:Lorg/inaturalist/android/ItemSearchActivity;

    invoke-virtual {v0}, Lorg/inaturalist/android/ItemSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity$2;->this$0:Lorg/inaturalist/android/ItemSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ItemSearchActivity;->access$100(Lorg/inaturalist/android/ItemSearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity$2;->this$0:Lorg/inaturalist/android/ItemSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ItemSearchActivity;->access$200(Lorg/inaturalist/android/ItemSearchActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity$2;->this$0:Lorg/inaturalist/android/ItemSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ItemSearchActivity;->access$100(Lorg/inaturalist/android/ItemSearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity$2;->this$0:Lorg/inaturalist/android/ItemSearchActivity;

    invoke-virtual {v0}, Lorg/inaturalist/android/ItemSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 239
    iget v0, p0, Lorg/inaturalist/android/ItemSearchActivity$2;->val$count:I

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity$2;->this$0:Lorg/inaturalist/android/ItemSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ItemSearchActivity;->access$200(Lorg/inaturalist/android/ItemSearchActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity$2;->this$0:Lorg/inaturalist/android/ItemSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ItemSearchActivity;->access$200(Lorg/inaturalist/android/ItemSearchActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
