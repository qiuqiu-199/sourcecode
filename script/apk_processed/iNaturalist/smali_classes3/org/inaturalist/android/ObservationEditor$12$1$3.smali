.class Lorg/inaturalist/android/ObservationEditor$12$1$3;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor$12$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/inaturalist/android/ObservationEditor$12$1;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor$12$1;Landroid/widget/EditText;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$12$1$3;->this$2:Lorg/inaturalist/android/ObservationEditor$12$1;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationEditor$12$1$3;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 761
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$12$1$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 762
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$12$1$3;->this$2:Lorg/inaturalist/android/ObservationEditor$12$1;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 763
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$12$1$3;->val$input:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
