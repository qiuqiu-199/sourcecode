.class Lorg/inaturalist/android/ActivityHelper$4;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ActivityHelper;->multipleChoiceSelection(Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Lorg/inaturalist/android/ActivityHelper$OnMultipleChoices;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ActivityHelper;

.field final synthetic val$adapter:Lorg/inaturalist/android/MultipleChoiceAdapter;

.field final synthetic val$alert:Landroid/app/AlertDialog;

.field final synthetic val$onOk:Lorg/inaturalist/android/ActivityHelper$OnMultipleChoices;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ActivityHelper;Lorg/inaturalist/android/ActivityHelper$OnMultipleChoices;Lorg/inaturalist/android/MultipleChoiceAdapter;Landroid/app/AlertDialog;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/inaturalist/android/ActivityHelper$4;->this$0:Lorg/inaturalist/android/ActivityHelper;

    iput-object p2, p0, Lorg/inaturalist/android/ActivityHelper$4;->val$onOk:Lorg/inaturalist/android/ActivityHelper$OnMultipleChoices;

    iput-object p3, p0, Lorg/inaturalist/android/ActivityHelper$4;->val$adapter:Lorg/inaturalist/android/MultipleChoiceAdapter;

    iput-object p4, p0, Lorg/inaturalist/android/ActivityHelper$4;->val$alert:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lorg/inaturalist/android/ActivityHelper$4;->val$onOk:Lorg/inaturalist/android/ActivityHelper$OnMultipleChoices;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/ActivityHelper$4;->val$onOk:Lorg/inaturalist/android/ActivityHelper$OnMultipleChoices;

    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper$4;->val$adapter:Lorg/inaturalist/android/MultipleChoiceAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/MultipleChoiceAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/inaturalist/android/ActivityHelper$OnMultipleChoices;->onMultipleChoices(Ljava/util/Set;)V

    .line 114
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ActivityHelper$4;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
