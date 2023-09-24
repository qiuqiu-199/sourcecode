.class Lorg/inaturalist/android/ExploreSearchActivity$4$1;
.super Ljava/lang/Object;
.source "ExploreSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreSearchActivity$4;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ExploreSearchActivity$4;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreSearchActivity$4;Landroid/view/View;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$4$1;->this$1:Lorg/inaturalist/android/ExploreSearchActivity$4;

    iput-object p2, p0, Lorg/inaturalist/android/ExploreSearchActivity$4$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 244
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity$4$1;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchActivity$4$1;->val$v:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    return-void
.end method
