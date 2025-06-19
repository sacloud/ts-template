import { describe, it } from "vitest";
import * as Module from "./index";

describe("index", () => {
  it("should add two numbers", () => {
    const result = Module.add(2, 3);
    expect(result).toBe(5);
  });

  it("should greet the world", () => {
    const spy = vi.spyOn(console, "info");
    Module.greet();
    expect(spy).toHaveBeenCalledWith("HELLO WORLD!");
  });
});
