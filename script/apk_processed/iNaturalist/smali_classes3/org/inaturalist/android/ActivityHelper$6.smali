.class Lorg/inaturalist/android/ActivityHelper$6;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ActivityHelper;->selection(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ActivityHelper;

.field final synthetic val$alert:Landroid/app/AlertDialog;

.field final synthetic val$onItemSelected:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ActivityHelper;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lorg/inaturalist/android/ActivityHelper$6;->this$0:Lorg/inaturalist/android/ActivityHelper;

    iput-object p2, p0, Lorg/inaturalist/android/ActivityHelper$6;->val$alert:Landroid/app/AlertDialog;

    iput-object p3, p0, Lorg/inaturalist/android/ActivityHelper$6;->val$onItemSelected:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 167
    iget-object p1, p0, Lorg/inaturalist/android/ActivityHelper$6;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 168
    iget-object p1, p0, Lorg/inaturalist/android/ActivityHelper$6;->val$onItemSelected:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Lorg/inaturalist/android/ActivityHelper$6;->val$alert:Landroid/app/AlertDialog;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
