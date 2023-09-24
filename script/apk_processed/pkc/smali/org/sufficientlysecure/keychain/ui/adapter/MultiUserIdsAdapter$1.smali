.class Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$1;
.super Ljava/lang/Object;
.source "MultiUserIdsAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 142
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;

    iput v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$1;->val$position:I

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$1;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 145
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->access$000(Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$1;->val$position:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$1;--->onCheckedChanged(Landroid/widget/CompoundButton;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
