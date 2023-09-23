.class final synthetic Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$0;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 14

    move-object/16 v11, p0

    move-object/16 v12, p1

    move/16 v13, p2

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    move/16 p4, p7

    move/16 p5, p8

    move/16 p6, p9

    move-object v0, v11

    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;

    move-object v2, v12

    move v3, v13

    move v4, p0

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->lambda$onCreateView$0$ViewKeyAdvShareFragment(Landroid/view/View;IIIIIIII)V

    return-void

    const-string p7, "M_InsDal"

    const-string p8, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$0;--->onLayoutChange(Landroid/view/View;IIIIIIII)V"

    invoke-static/range {p7 .. p8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
