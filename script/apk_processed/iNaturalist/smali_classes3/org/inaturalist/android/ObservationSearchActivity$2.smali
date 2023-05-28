.class Lorg/inaturalist/android/ObservationSearchActivity$2;
.super Ljava/lang/Object;
.source "ObservationSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationSearchActivity;

.field final synthetic val$autoCompView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationSearchActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity$2;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationSearchActivity$2;->val$autoCompView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 205
    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity$2;->val$autoCompView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 206
    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity$2;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 207
    iget-object v1, p0, Lorg/inaturalist/android/ObservationSearchActivity$2;->val$autoCompView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
