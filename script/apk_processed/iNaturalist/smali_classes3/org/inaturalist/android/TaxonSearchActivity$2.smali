.class Lorg/inaturalist/android/TaxonSearchActivity$2;
.super Ljava/lang/Object;
.source "TaxonSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonSearchActivity;

.field final synthetic val$autoCompView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonSearchActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$2;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    iput-object p2, p0, Lorg/inaturalist/android/TaxonSearchActivity$2;->val$autoCompView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 563
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$2;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/TaxonSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 564
    iget-object v1, p0, Lorg/inaturalist/android/TaxonSearchActivity$2;->val$autoCompView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
