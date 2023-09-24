.class Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;
.super Ljava/lang/Object;
.source "TwoWayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/lucasr/twowayview/TwoWayView;


# direct methods
.method private constructor <init>(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .line 6466
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V
    .locals 0

    .line 6466
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 6469
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$500(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6473
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$1400(Lorg/lucasr/twowayview/TwoWayView;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6474
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0, p0}, Lorg/lucasr/twowayview/TwoWayView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6477
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$2800(Lorg/lucasr/twowayview/TwoWayView;)V

    .line 6478
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$2900(Lorg/lucasr/twowayview/TwoWayView;)V

    :cond_1
    :goto_0
    return-void
.end method
