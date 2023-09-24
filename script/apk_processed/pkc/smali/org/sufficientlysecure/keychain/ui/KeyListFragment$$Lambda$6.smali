.class final synthetic Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Leu/davidea/fastscroller/FastScroller$BubbleTextCreator;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$6;->arg$1:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$6;---><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateBubbleText(I)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$6;->arg$1:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->bridge$lambda$2$KeyListFragment(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$6;--->onCreateBubbleText(I)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
