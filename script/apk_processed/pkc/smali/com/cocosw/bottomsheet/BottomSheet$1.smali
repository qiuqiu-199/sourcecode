.class Lcom/cocosw/bottomsheet/BottomSheet$1;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocosw/bottomsheet/BottomSheet;->init(Landroid/content/Context;)V
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

    .line 161
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$1;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$1;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/BottomSheet;->dismiss()V

    return-void
.end method

.method public onOpened()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$1;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet;->access$000(Lcom/cocosw/bottomsheet/BottomSheet;)V

    return-void
.end method
