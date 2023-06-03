.class Lorg/inaturalist/android/ActivityHelper$5;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ActivityHelper;->selection(Ljava/lang/String;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ActivityHelper;

.field final synthetic val$alert:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ActivityHelper;Landroid/app/AlertDialog;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/inaturalist/android/ActivityHelper$5;->this$0:Lorg/inaturalist/android/ActivityHelper;

    iput-object p2, p0, Lorg/inaturalist/android/ActivityHelper$5;->val$alert:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 137
    iget-object p1, p0, Lorg/inaturalist/android/ActivityHelper$5;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
