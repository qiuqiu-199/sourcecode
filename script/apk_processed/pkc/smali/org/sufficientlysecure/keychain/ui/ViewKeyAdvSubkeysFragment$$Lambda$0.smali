.class final synthetic Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$0;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    move/16 p0, p3

    move-wide/16 p1, p4

    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    move-object v1, v7

    move-object v2, v8

    move v3, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->lambda$onCreateView$0$ViewKeyAdvSubkeysFragment(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$0;--->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
