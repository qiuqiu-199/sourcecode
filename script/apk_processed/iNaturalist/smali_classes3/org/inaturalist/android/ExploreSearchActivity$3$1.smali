.class Lorg/inaturalist/android/ExploreSearchActivity$3$1;
.super Ljava/lang/Object;
.source "ExploreSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreSearchActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ExploreSearchActivity$3;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreSearchActivity$3;Landroid/widget/EditText;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$3$1;->this$1:Lorg/inaturalist/android/ExploreSearchActivity$3;

    iput-object p2, p0, Lorg/inaturalist/android/ExploreSearchActivity$3$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity$3$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
