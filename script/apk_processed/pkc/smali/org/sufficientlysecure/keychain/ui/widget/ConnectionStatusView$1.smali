.class Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$1;
.super Ljava/lang/Object;
.source "ConnectionStatusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->resetAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 102
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$1;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$1;---><init>(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 4

    move-object/16 v1, p0

    .line 105
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$1;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->access$200(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$1;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->access$300(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$1;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->access$400(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;)V

    :goto_0
    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$1;--->run()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
