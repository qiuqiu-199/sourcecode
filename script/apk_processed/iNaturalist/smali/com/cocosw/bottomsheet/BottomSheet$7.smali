.class Lcom/cocosw/bottomsheet/BottomSheet$7;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocosw/bottomsheet/BottomSheet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocosw/bottomsheet/BottomSheet;


# direct methods
.method constructor <init>(Lcom/cocosw/bottomsheet/BottomSheet;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$7;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$7;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet;->access$2200(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$7;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet;->access$2200(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 451
    :cond_0
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$7;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->access$2300(Lcom/cocosw/bottomsheet/BottomSheet;)I

    move-result p1

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_1

    .line 452
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$7;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->access$2100(Lcom/cocosw/bottomsheet/BottomSheet;)V

    :cond_1
    return-void
.end method
